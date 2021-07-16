(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[135],{4903:(e,r,t)=>{"use strict";t.r(r),t.d(r,{createAudioFilePlayerAdapter:()=>E});var n=t(65526),a=t.n(n),i=t(70283),o=t(45106);function s(e,r){var t=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);r&&(n=n.filter((function(r){return Object.getOwnPropertyDescriptor(e,r).enumerable}))),t.push.apply(t,n)}return t}function c(e){for(var r=1;r<arguments.length;r++){var t=null!=arguments[r]?arguments[r]:{};r%2?s(Object(t),!0).forEach((function(r){a()(e,r,t[r])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(t)):s(Object(t)).forEach((function(r){Object.defineProperty(e,r,Object.getOwnPropertyDescriptor(t,r))}))}return e}const u={paused:!0,context:{uri:null,metadata:{}},duration:0,position:0,shuffle:!1,repeat_mode:i.zq.OFF,timestamp:0,disallows:{},restrictions:{},track_window:{current_track:null,next_tracks:[],previous_tracks:[]}};var d;!function(e){e[e.UPDATE=0]="UPDATE"}(d||(d={}));const l=(0,o.MT)(((e=u,r)=>{switch(r.type){case d.UPDATE:return c(c({},e),r.newPartialState);default:return e}})),p=e=>{l.dispatch({type:d.UPDATE,newPartialState:e})};var m=t(51020),y=t.n(m),f=t(66917),b=t.n(f),k=t(94630);function _(e,r){var t=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);r&&(n=n.filter((function(r){return Object.getOwnPropertyDescriptor(e,r).enumerable}))),t.push.apply(t,n)}return t}function v(e){for(var r=1;r<arguments.length;r++){var t=null!=arguments[r]?arguments[r]:{};r%2?_(Object(t),!0).forEach((function(r){a()(e,r,t[r])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(t)):_(Object(t)).forEach((function(r){Object.defineProperty(e,r,Object.getOwnPropertyDescriptor(t,r))}))}return e}const w=1e3,O=(e,r,t)=>{if("undefined"!=typeof document){const r=document.querySelector("body");if(r){const t=()=>{e.load(),r.removeEventListener("click",t)};r.addEventListener("click",t)}}var n;"undefined"!=typeof window&&window.addEventListener("beforeunload",(()=>{t.onPlaybackEnded(k.n0.REQUESTED,e.currentTime)})),e.addEventListener("playing",(()=>{p({paused:!1}),t.onResumed(e.currentTime)})),e.addEventListener("pause",(()=>{p({paused:!0}),t.onPaused(e.currentTime)})),e.addEventListener("timeupdate",(e=>{r.emit(i.B_.PROGRESS,{data:{position:e.target.currentTime*w}})})),e.addEventListener("ended",(()=>{t.onPlaybackEnded(k.n0.PLAYED_TO_END,e.currentTime)})),e.addEventListener("canplay",(()=>{r.emit(i.B_.BUFFERING_END,void 0),t.onReady(e.currentTime)})),e.addEventListener("waiting",(()=>{r.emit(i.B_.BUFFERING_START,void 0),t.onBuffering(k.w0.STALL,e.currentTime)})),e.addEventListener("error",(n=>{var a;const o=null==n||null===(a=n.target)||void 0===a?void 0:a.error;let s;if(null!=o&&o.code){switch(o.code){case 1:s="Problem fetching the track";break;case 2:s="Network error";break;case 3:s="Error decoding the track";break;case 4:s="Unable to play the track";break;default:s="Unknown audio playback error"}r.emit(i.B_.ERROR,{error:v(v({},o),{},{code:null==o?void 0:o.code,message:s})}),t.onPlaybackEnded(k.n0.FATAL_ERROR,e.currentTime)}})),n=e=>{r.emit(i.B_.STATE_CHANGED,e)},l.subscribe((()=>n(l.getState())))},E=(e,r)=>{const t=new(y());return setTimeout((()=>{try{if(!e)throw new Error("Audio element not found");O(e,t,r)}catch(e){throw t.emit(i.B_.PLAYER_INITIALIZATION_FAILED,{error:e}),e}}),0),{async play(t,{metadata:n,offset:a}){const i=n;if(!i)return Promise.reject("No audio file URL. :(");const o=({name:e,uri:r})=>({name:e,uri:r}),s=i.id||b().from(i.uri)._base62Id;var c;(p({track_window:{current_track:{id:s,uri:i.uri,type:i.type,name:i.name||"",media_type:"audio",duration_ms:i.duration_ms,album:i.album&&(({uri:e,name:r,images:t,artists:n})=>({uri:e,name:r,images:t,artists:n&&n.map(o)||[],linked_from:{id:null,uri:null}}))(i.album),artists:i.artists&&i.artists.map(o)},next_tracks:[],previous_tracks:[]},paused:!1,disallows:{skipping_next:!0,skipping_prev:!0},restrictions:{disallow_skipping_next_reasons:["unauthenticated_user"],disallow_skipping_prev_reasons:["unauthenticated_user"]},context:i.context}),e.src!==i.unencrypted_playback_url)?(r.onPlaybackCreated({mediaUrl:i.uri,sessionId:btoa(Math.random().toString()),context:(null===(c=i.album)||void 0===c?void 0:c.uri)||""},e.currentTime),e.src=i.unencrypted_playback_url||"",a&&a>=0&&i.duration_ms&&a<i.duration_ms&&(e.currentTime=a/w)):a&&await this.seek(a);return e.play(),!0},async resume(){try{return e.play(),!0}catch(e){return!1}},async pause(){try{return e.pause(),!0}catch(e){return!1}},async togglePlay(){return e.paused?this.resume():this.pause()},seek:async t=>(r.onSeeking(e.currentTime,t/w),e.currentTime=t/w,Promise.resolve(!0)),seekForward:async t=>(r.onSeeking(e.currentTime,t/w),e.currentTime+=t/w,Promise.resolve(!0)),seekBackward:async t=>(r.onSeeking(e.currentTime,t/w),e.currentTime-=t/w,Promise.resolve(!0)),on(e,r,n){t.on(e,r,n)},removeListener(e,r){t.removeListener(e,r)}}}}}]);