# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Message Classes
#
class RequestEnvelop < ::Protobuf::Message
  class Requests < ::Protobuf::Message; end
  class Unknown3 < ::Protobuf::Message; end
  class Unknown6 < ::Protobuf::Message
    class Unknown2 < ::Protobuf::Message; end

  end

  class AuthInfo < ::Protobuf::Message
    class JWT < ::Protobuf::Message; end

  end


end

class ResponseEnvelop < ::Protobuf::Message
  class Unknown6 < ::Protobuf::Message
    class Unknown2 < ::Protobuf::Message; end

  end

  class Unknown7 < ::Protobuf::Message; end
  class Payload < ::Protobuf::Message; end
  class Profile < ::Protobuf::Message
    class AvatarDetails < ::Protobuf::Message; end
    class DailyBonus < ::Protobuf::Message; end
    class Currency < ::Protobuf::Message; end

  end


end



##
# Message Fields
#
class RequestEnvelop
  class Requests
    required :int32, :type, 1
    optional ::RequestEnvelop::Unknown3, :message, 2
  end

  class Unknown3
    required :string, :unknown4, 1
  end

  class Unknown6
    class Unknown2
      required :bytes, :unknown1, 1
    end

    required :int32, :unknown1, 1
    required ::RequestEnvelop::Unknown6::Unknown2, :unknown2, 2
  end

  class AuthInfo
    class JWT
      required :string, :contents, 1
      required :int32, :unknown13, 2
    end

    required :string, :provider, 1
    required ::RequestEnvelop::AuthInfo::JWT, :token, 2
  end

  required :int32, :unknown1, 1
  optional :int64, :rpc_id, 3
  repeated ::RequestEnvelop::Requests, :requests, 4
  optional ::RequestEnvelop::Unknown6, :unknown6, 6
  optional :fixed64, :latitude, 7
  optional :fixed64, :longitude, 8
  optional :fixed64, :altitude, 9
  optional ::RequestEnvelop::AuthInfo, :auth, 10
  optional :int64, :unknown12, 12
end

class ResponseEnvelop
  class Unknown6
    class Unknown2
      required :bytes, :unknown1, 1
    end

    required :int32, :unknown1, 1
    required ::ResponseEnvelop::Unknown6::Unknown2, :unknown2, 2
  end

  class Unknown7
    optional :bytes, :unknown71, 1
    optional :int64, :unknown72, 2
    optional :bytes, :unknown73, 3
  end

  class Payload
    required :int32, :unknown1, 1
    optional ::ResponseEnvelop::Profile, :profile, 2
  end

  class Profile
    class AvatarDetails
      optional :int32, :unknown2, 2
      optional :int32, :unknown3, 3
      optional :int32, :unknown9, 9
      optional :int32, :unknown10, 10
    end

    class DailyBonus
      optional :int64, :NextCollectTimestampMs, 1
      optional :int64, :NextDefenderBonusCollectTimestampMs, 2
    end

    class Currency
      required :string, :type, 1
      optional :int32, :amount, 2
    end

    required :int64, :creation_time, 1
    optional :string, :username, 2
    optional :int32, :team, 5
    optional :bytes, :tutorial, 7
    optional ::ResponseEnvelop::Profile::AvatarDetails, :avatar, 8
    optional :int32, :poke_storage, 9
    optional :int32, :item_storage, 10
    optional ::ResponseEnvelop::Profile::DailyBonus, :daily_bonus, 11
    optional :bytes, :unknown12, 12
    optional :bytes, :unknown13, 13
    repeated ::ResponseEnvelop::Profile::Currency, :currency, 14
  end

  required :int32, :unknown1, 1
  optional :int64, :rpc_id, 2
  optional :string, :api_url, 3
  optional ::ResponseEnvelop::Unknown6, :unknown6, 6
  optional ::ResponseEnvelop::Unknown7, :unknown7, 7
  repeated ::ResponseEnvelop::Payload, :payload, 100
end

