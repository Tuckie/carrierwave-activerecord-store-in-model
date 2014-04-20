
require 'active_record'
require 'carrierwave'

module CarrierWave

  module Storage
    module ActiverecordStoreInModel
      autoload :VERSION,          'carrierwave-activerecord-store-in-model/storage/version'
      autoload :StorageProvider,  'carrierwave-activerecord-store-in-model/storage/storage_provider'
      autoload :File,             'carrierwave-activerecord-store-in-model/storage/file'
      autoload :ActiveRecordFile, 'carrierwave-activerecord-store-in-model/storage/active_record_file'
    end
  end

  module Uploader
    class Base

      configure do |config|
        config.storage_engines[:activerecord_store_in_model] = 'CarrierWave::Storage::ActiverecordStoreInModel::StorageProvider'
      end

    end # Base
  end # Uploader

end # CarrierWave
