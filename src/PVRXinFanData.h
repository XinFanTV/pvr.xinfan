#pragma once
/*
 *      Copyright (C) 2015 XinFan.TV
 *      http://www.xinfan.tv/
 *
 *  This Program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2, or (at your option)
 *  any later version.
 *
 *  This Program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with XBMC; see the file COPYING.  If not, write to
 *  the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
 *  http://www.gnu.org/copyleft/gpl.html
 *
 */

#include <vector>
#include "platform/util/StdString.h"
#include "client.h"

struct PVRXinFanEpgEntry
{
  int         iBroadcastId;
  std::string strTitle;
  int         iChannelId;
  time_t      startTime;
  time_t      endTime;
  std::string strPlotOutline;
  std::string strPlot;
  std::string strIconPath;
  int         iGenreType;
  int         iGenreSubType;
//  time_t      firstAired;
//  int         iParentalRating;
//  int         iStarRating;
//  bool        bNotify;
//  int         iSeriesNumber;
//  int         iEpisodeNumber;
//  int         iEpisodePartNumber;
//  std::string strEpisodeName;
};

struct PVRXinFanChannel
{
  bool                    bRadio;
  int                     iUniqueId;
  int                     iChannelNumber;
  int                     iSubChannelNumber;
  int                     iEncryptionSystem;
  std::string             strChannelName;
  std::string             strIconPath;
  std::string             strStreamURL;
  std::vector<PVRXinFanEpgEntry> epg;
};

struct PVRXinFanRecording
{
  int         iDuration;
  int         iGenreType;
  int         iGenreSubType;
  std::string strChannelName;
  std::string strPlotOutline;
  std::string strPlot;
  std::string strRecordingId;
  std::string strStreamURL;
  std::string strTitle;
  std::string strDirectory;
  time_t      recordingTime;
};

struct PVRXinFanTimer
{
  int             iChannelId;
  time_t          startTime;
  time_t          endTime;
  PVR_TIMER_STATE state;
  std::string     strTitle;
  std::string     strSummary;
};

struct PVRXinFanChannelGroup
{
  bool             bRadio;
  int              iGroupId;
  std::string      strGroupName;
  int              iPosition;
  std::vector<int> members;
};

class PVRXinFanData
{
public:
  PVRXinFanData(void);
  virtual ~PVRXinFanData(void);

  virtual int GetChannelsAmount(void);
  virtual PVR_ERROR GetChannels(ADDON_HANDLE handle, bool bRadio);
  virtual bool GetChannel(const PVR_CHANNEL &channel, PVRXinFanChannel &myChannel);

  virtual int GetChannelGroupsAmount(void);
  virtual PVR_ERROR GetChannelGroups(ADDON_HANDLE handle, bool bRadio);
  virtual PVR_ERROR GetChannelGroupMembers(ADDON_HANDLE handle, const PVR_CHANNEL_GROUP &group);

  virtual PVR_ERROR GetEPGForChannel(ADDON_HANDLE handle, const PVR_CHANNEL &channel, time_t iStart, time_t iEnd);

  virtual int GetRecordingsAmount(bool bDeleted);
  virtual PVR_ERROR GetRecordings(ADDON_HANDLE handle, bool bDeleted);

  virtual int GetTimersAmount(void);
  virtual PVR_ERROR GetTimers(ADDON_HANDLE handle);

  virtual std::string GetSettingsFile() const;
protected:
  virtual bool LoadXinFanData(void);
private:
  std::vector<PVRXinFanChannelGroup> m_groups;
  std::vector<PVRXinFanChannel>      m_channels;
  std::vector<PVRXinFanRecording>    m_recordings;
  std::vector<PVRXinFanRecording>    m_recordingsDeleted;
  std::vector<PVRXinFanTimer>        m_timers;
  time_t                           m_iEpgStart;
  CStdString                       m_strDefaultIcon;
  CStdString                       m_strDefaultMovie;
};
