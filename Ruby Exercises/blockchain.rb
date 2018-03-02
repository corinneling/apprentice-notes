require 'digest'
require 'pp'

class Block

  attr_reader :index
  attr_reader :timestamp
  attr_reader :data
  attr_reader :previous_hash
  attr_reader :hash

  def initialize(index, data, previous_hash)
    @index = index
    @timestamp = Time.now
    @data = data
    @previous_hash = previous_hash
    @hash = calc_hash
  end

  def calc_hash
    sha = Digest::SHA256.new
    sha.update(@index.to_s + @timestamp.to_s + @data + @previous_hash)
    sha.hexdigest
  end

  def self.first(data="Genesis")
    Block.new( 0, data, "0")
  end

  def self.next(previous, data="Transaction Data...")
    Block.new(previous.index+1, data, previous.hash)
  end

end


b0 = Block.first("Genesis")
b1 = Block.next(b0, "Transaction Data...")
b2 = Block.next(b1, "Transaction Data...")
b3 = Block.next(b2, "More Transaction Data...")

blockchain = [b0, b1, b2, b3]

pp blockchain
