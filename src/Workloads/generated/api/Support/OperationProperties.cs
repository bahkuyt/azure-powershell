// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support
{

    /// <summary>Defines the workload operation origin.</summary>
    public partial struct OperationProperties :
        System.IEquatable<OperationProperties>
    {
        public static Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.OperationProperties NotSpecified = @"NotSpecified";

        public static Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.OperationProperties System = @"System";

        public static Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.OperationProperties User = @"User";

        /// <summary>the value for an instance of the <see cref="OperationProperties" /> Enum.</summary>
        private string _value { get; set; }

        /// <summary>Conversion from arbitrary object to OperationProperties</summary>
        /// <param name="value">the value to convert to an instance of <see cref="OperationProperties" />.</param>
        internal static object CreateFrom(object value)
        {
            return new OperationProperties(global::System.Convert.ToString(value));
        }

        /// <summary>Compares values of enum type OperationProperties</summary>
        /// <param name="e">the value to compare against this instance.</param>
        /// <returns><c>true</c> if the two instances are equal to the same value</returns>
        public bool Equals(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.OperationProperties e)
        {
            return _value.Equals(e._value);
        }

        /// <summary>Compares values of enum type OperationProperties (override for Object)</summary>
        /// <param name="obj">the value to compare against this instance.</param>
        /// <returns><c>true</c> if the two instances are equal to the same value</returns>
        public override bool Equals(object obj)
        {
            return obj is OperationProperties && Equals((OperationProperties)obj);
        }

        /// <summary>Returns hashCode for enum OperationProperties</summary>
        /// <returns>The hashCode of the value</returns>
        public override int GetHashCode()
        {
            return this._value.GetHashCode();
        }

        /// <summary>Creates an instance of the <see cref="OperationProperties"/> Enum class.</summary>
        /// <param name="underlyingValue">the value to create an instance for.</param>
        private OperationProperties(string underlyingValue)
        {
            this._value = underlyingValue;
        }

        /// <summary>Returns string representation for OperationProperties</summary>
        /// <returns>A string for this value.</returns>
        public override string ToString()
        {
            return this._value;
        }

        /// <summary>Implicit operator to convert string to OperationProperties</summary>
        /// <param name="value">the value to convert to an instance of <see cref="OperationProperties" />.</param>

        public static implicit operator OperationProperties(string value)
        {
            return new OperationProperties(value);
        }

        /// <summary>Implicit operator to convert OperationProperties to string</summary>
        /// <param name="e">the value to convert to an instance of <see cref="OperationProperties" />.</param>

        public static implicit operator string(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.OperationProperties e)
        {
            return e._value;
        }

        /// <summary>Overriding != operator for enum OperationProperties</summary>
        /// <param name="e1">the value to compare against <paramref name="e2" /></param>
        /// <param name="e2">the value to compare against <paramref name="e1" /></param>
        /// <returns><c>true</c> if the two instances are not equal to the same value</returns>
        public static bool operator !=(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.OperationProperties e1, Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.OperationProperties e2)
        {
            return !e2.Equals(e1);
        }

        /// <summary>Overriding == operator for enum OperationProperties</summary>
        /// <param name="e1">the value to compare against <paramref name="e2" /></param>
        /// <param name="e2">the value to compare against <paramref name="e1" /></param>
        /// <returns><c>true</c> if the two instances are equal to the same value</returns>
        public static bool operator ==(Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.OperationProperties e1, Microsoft.Azure.PowerShell.Cmdlets.Workloads.Support.OperationProperties e2)
        {
            return e2.Equals(e1);
        }
    }
}