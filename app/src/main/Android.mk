#
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res

LOCAL_SRC_FILES := \
    $(call all-java-files-under, java) \
    $(call all-java-files-under, java_blissroms)

LOCAL_USE_AAPT2 := true

LOCAL_STATIC_ANDROID_LIBRARIES := \
    androidx.annotation_annotation \
    androidx.appcompat_appcompat \
    androidx.cardview_cardview \
    androidx.palette_palette \
    androidx.recyclerview_recyclerview \
    androidx.transition_transition \
    com.google.android.material_material

LOCAL_PACKAGE_NAME := Browser

LOCAL_PRIVATE_PLATFORM_APIS := true

LOCAL_PROGUARD_FLAG_FILES := ../../proguard-rules.pro

include $(BUILD_PACKAGE)
