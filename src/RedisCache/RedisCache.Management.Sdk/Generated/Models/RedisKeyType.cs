// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.Management.RedisCache.Models
{
    using Newtonsoft.Json;
    using Newtonsoft.Json.Converters;
    using System.Runtime;
    using System.Runtime.Serialization;

    /// <summary>
    /// Defines values for RedisKeyType.
    /// </summary>
    [JsonConverter(typeof(StringEnumConverter))]
    public enum RedisKeyType
    {
        [EnumMember(Value = "Primary")]
        Primary,
        [EnumMember(Value = "Secondary")]
        Secondary
    }
    internal static class RedisKeyTypeEnumExtension
    {
        internal static string ToSerializedValue(this RedisKeyType? value)
        {
            return value == null ? null : ((RedisKeyType)value).ToSerializedValue();
        }

        internal static string ToSerializedValue(this RedisKeyType value)
        {
            switch( value )
            {
                case RedisKeyType.Primary:
                    return "Primary";
                case RedisKeyType.Secondary:
                    return "Secondary";
            }
            return null;
        }

        internal static RedisKeyType? ParseRedisKeyType(this string value)
        {
            switch( value )
            {
                case "Primary":
                    return RedisKeyType.Primary;
                case "Secondary":
                    return RedisKeyType.Secondary;
            }
            return null;
        }
    }
}
