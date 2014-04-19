require 'active_record'
require 'carrierwave'

module CarrierWave

  module Storage
    module ActiveRecordStoreInModel
      autoload :VERSION,          'carrierwave/storage/version'
      autoload :StorageProvider,  'carrierwave/storage/storage_provider'
      autoload :File,             'carrierwave/storage/file'
      autoload :ActiveRecordFile, 'carrierwave/storage/active_record_file'
    end
  end

  module Uploader
    class Base

      configure do |config|
        config.storage_engines[:active_record_store_in_model] = 'CarrierWave::Storage::ActiveRecordStoreInModel::StorageProvider'
      end

    end # Base
  end # Uploader

end # CarrierWave
