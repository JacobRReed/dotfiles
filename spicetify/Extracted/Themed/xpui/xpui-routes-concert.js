(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[288],{25857:(e,t,a)=>{"use strict";a.d(t,{Hr:()=>r,qo:()=>n,GJ:()=>s,B$:()=>l,pf:()=>i,ak:()=>o,B:()=>m,X7:()=>d});var c=a(76638);const r=e=>e?e.reduce(((e,t)=>(e.push(t.releases.items[0]),e)),[]):[],n=e=>`spotify:artist:${e}`,s=e=>`spotify:app:artist:${e}`,l=(e,t,a)=>{var c,r;return{artists:[{uri:t,name:a}],images:(null===(c=e.coverArt)||void 0===c?void 0:c.sources)||[],name:e.name,uri:e.uri,year:null===(r=e.date)||void 0===r?void 0:r.year,type:e.type,sharingInfo:e.sharingInfo}},i=e=>{var t,a;return{artists:e.artists.items.map((e=>({uri:e.uri,name:e.profile.name}))),images:(null===(t=e.coverArt)||void 0===t?void 0:t.sources)||[],name:e.name,uri:e.uri,year:null===(a=e.date)||void 0===a?void 0:a.year,type:e.type,sharingInfo:e.sharingInfo}},o=({uri:e,profile:{name:t},visuals:{avatarImage:a}})=>({uri:e,name:t,images:(null==a?void 0:a.sources)||[]}),m=({uri:e,name:t,description:a,images:{items:c},owner:r})=>({uri:e,name:t,owner:{display_name:(null==r?void 0:r.name)||t},description:a||"",images:c[0]&&c[0].sources?c[0].sources:[]}),d=({track:{uri:e,name:t,playcount:a,duration:{totalMilliseconds:r},contentRating:n,artists:{items:s},album:{coverArt:l,uri:i},playability:{playable:o}}},m)=>{var d;return{uri:e,contextUri:m,totalMilliseconds:r,name:t,contentRating:(null==n?void 0:n.label)||c.KS.None,isPlayable:o,playcount:parseInt(a||"0",10),artists:s.map((e=>({uri:e.uri,name:e.profile.name}))),imageUrl:null!=l&&null!==(d=l.sources)&&void 0!==d&&d.length?l.sources[0].url:"",albumUri:i}}},26268:(e,t,a)=>{"use strict";a.d(t,{k:()=>p});var c=a(27378),r=a.n(c),n=a(20557),s=a(30245),l=a(27816),i=a(53177);const o="concert-concertCard-ConcertCard",m="concert-concertCard-date",d="concert-concertCard-dateMonth",u="concert-concertCard-dateDay",g="concert-concertCard-metadata",b="concert-concertCard-title",f="concert-concertCard-location",h="concert-concertCard-fullDate",v="concert-concertCard-image";var E=a(52702);const p=r().memo((e=>{const{entity:t,isVirtual:a}=e,{venue:{name:c,location:{name:p}}}=t,y=t.artists[0],_=(0,n.ij)(t),N=new Date(t.date.isoString);return r().createElement(s.r,{to:`/concert/${t.id}`,className:o},y.imageUri?r().createElement(l.Z,null,r().createElement("div",{"data-testid":"image-container",className:v,style:{backgroundImage:`linear-gradient(180deg, rgba(18, 18, 18, 0) 0%, rgba(6, 6, 6, 0.6) 60%, rgba(0, 0, 0, 0.7) 100%), url(${y.imageUri})`}})):null,r().createElement("time",{className:m,dateTime:t.date.isoString},r().createElement(i.Dy.h5,{variant:i.$e.minuetBold,className:d},(0,n.lJ)(N)),r().createElement(i.Dy.h1,{variant:i.$e.canon,className:u},N.getDate())),r().createElement("div",{className:g,dir:"auto"},r().createElement(i.Dy.h2,{className:h,variant:i.$e.minuetBold},(0,E.FO)(N),", ",(0,n.b8)(N)),r().createElement(i.Dy.h2,{variant:i.$e.cello,weight:i.vS.bold,className:b},_),r().createElement(i.Dy.h2,{className:f,variant:i.$e.mesto,"data-testid":"location-name"},a?c:`${c}, ${p}`)))}))},69306:(e,t,a)=>{"use strict";a.r(t),a.d(t,{default:()=>de});var c=a(27378),r=a.n(c),n=a(79308),s=a(41056),l=a(15941),i=a(92416),o=a(61043),m=a(74544),d=a(58681),u=a(55157),g=a(75604),b=a(7593),f=a(47050),h=a(16406),v=a(30245),E=a(27816),p=a(53177);const y="concert-concertArtistCard-concertArtistCard",_="concert-concertArtistCard-metadata",N="concert-concertArtistCard-name",$="concert-concertArtistCard-headliner",k="concert-concertArtistCard-headlinerText",D="concert-concertArtistCard-image",U=r().memo((e=>{const{entity:t,headliner:a}=e,{imageUri:c,name:n,uri:s}=t;return r().createElement(v.r,{to:s,className:y},c?r().createElement(E.Z,null,r().createElement("div",{"data-testid":"image-container",className:D,style:{backgroundImage:`linear-gradient(180deg, rgba(18, 18, 18, 0) 0%, rgba(18, 18, 18, 0.5) 50.52%, rgba(18, 18, 18, 0.7) 100%), url(${c})`}})):null,r().createElement("div",{className:_},a&&r().createElement("div",{className:$},r().createElement(p.Dy.h4,{variant:p.$e.minuet,className:k,weight:p.vS.bold},o.ag.get("concert.label.headliner"))),r().createElement(p.Dy.h2,{variant:p.$e.alto,className:N},n)))})),w={concertsHubCard:"concert-concertsHubCard-concertsHubCard",metadata:"concert-concertsHubCard-metadata",title:"concert-concertsHubCard-title",image:"concert-concertsHubCard-image"},I=o.ag.get("concerts_browse_more"),C=r().memo((()=>r().createElement(v.r,{to:"spotify:concerts",className:w.concertsHubCard},r().createElement(E.Z,null,r().createElement("div",{className:w.image,style:{backgroundImage:"linear-gradient(180deg, rgba(18, 18, 18, 0) 0%, rgba(18, 18, 18, 0.5) 50.52%, rgba(18, 18, 18, 0.7) 100%), url(https://concerts.spotifycdn.com/ConcertHubCard.png)"}})),r().createElement("div",{className:w.metadata},r().createElement(p.Dy.h2,{variant:p.$e.canon,className:w.name},I)))));var Z=a(20557);const P="concert-concert-concertCalendarBackground",x="concert-concert-concertCalendarDate",A="concert-concert-concertContainer",L="concert-concert-header",M="concert-concert-concertEntityBody",O="concert-concert-concertEntityPartnerAttribution",S="concert-concert-metadataContainer",T="concert-concert-headerButtons",Y="concert-concert-headerButtonLink",B="concert-concert-moreButton",J="concert-concert-sectionHeader",H="concert-concert-topBarContent",q="concert-concert-topBarButton",G="concert-concert-sectionContainer",R="concert-concert-concertDate";var j=a(95547),z=a(54753),F=a(25857),K=a(26268),V=a(11111),W=a(27599),X=a(60564),Q=a(10265),ee=a(32801);const te=r().memo((({uri:e})=>r().createElement(b.ZP,{value:"concert"},r().createElement(X.v,null,r().createElement(ee.q,null,r().createElement(Q.Jx,{uri:e,displayText:o.ag.get("context-menu.copy-concert-link")}),r().createElement(Q.NN,{uri:e})),r().createElement(Q.h$,{uri:e})))));var ae=a(4467);const ce=(e,t)=>({artists:[{uri:t,name:e.artistName}],images:[{url:e.imageUri,height:100,width:100}],name:e.name,uri:e.uri,type:"ALBUM"}),re=e=>{const t=new Date(Date.parse(e.date));return r().createElement("div",{className:P},r().createElement(p.Dy.h3,{variant:p.$e.canon,className:x},(0,Z.NL)(t)))},ne=e=>{const{clickThrus:t,ticketing:a,date:c,venue:n,location:s,clickThruUrl:l,id:i,category:m,lat:d,lon:u}=e,g=new Date(Date.parse(c)),b=`spotify:concert:${i}`,f="ONLINE"===m,h=(0,V.o)();let E="";if(!t||!t.length)return null;const y=t[0].partnerDisplayName;E="Songkick"===y?o.ag.get("concert.header.partner_songkick_attribution",y):a&&a[0]&&a[0].minPrice?o.ag.get("concert.header.partner_price_attribution",a[0].minPrice,y):o.ag.get("concert.header.partner_attribution",y),f&&(E=o.ag.get("concert_available_through",y));const _=f?o.ag.get("concert_find_virtual_event"):o.ag.get("concert.button.see_tickets");if((0,Z.O1)(g))return r().createElement("div",{className:S},r().createElement(p.Dy.h3,{variant:p.$e.canon},o.ag.get("concert_event_ended")),r().createElement(p.Dy.span,null,r().createElement(v.Z,{to:"spotify:concerts"},o.ag.get("concert_past_message"))));return r().createElement("div",{className:S},r().createElement(p.Dy.h3,{variant:p.$e.canon},(()=>{if(f)return r().createElement(p.Dy.h3,{variant:p.$e.canon},n);const e=`https://maps.google.com/?q=${encodeURIComponent(`${n},${s}`)}&ll=${d},${u}`;return r().createElement(v.Z,{to:e,target:"_blank"},r().createElement(p.Dy.h3,{variant:p.$e.canon},`${n}, ${s}`))})()),r().createElement(p.Dy.h3,{variant:p.$e.mesto,className:R},(0,Z.Ms)(g)," • ",(0,Z.b8)(g)),r().createElement(p.Dy.h3,{className:O,variant:p.$e.mesto},E),r().createElement("div",{className:T},r().createElement(v.Z,{draggable:!1,className:Y,to:l,target:"_blank"},r().createElement(j.Y,{version:"secondary",onClick:function(){h({targetUri:b,intent:"find-concert",type:"click"})}},_)),r().createElement(W.y,{menu:r().createElement(te,{uri:b})},r().createElement(z.z,{size:32,className:B}))))},se=e=>{const{albums:t,artists:a}=e,c=t.reduce(((e,t)=>{const a=t.artistName;return e[a]?e[a].push(t):e[a]=[t],e}),{});return r().createElement("div",{className:J},a.map(((e,t)=>{const a=c[e.name]||[],n=a.length+2;let s=a.map(((t,a)=>r().createElement(h.r,{key:a,entity:ce(t,e.uri)})));return s=[null,r().createElement(U,{entity:e,headliner:0===t})].concat(s),r().createElement(b.ZP,{value:"headered-grid",index:t},r().createElement(f.P,{title:0===t?o.ag.get("concert_lineup"):"",total:n,seeAllUri:`${(0,F.GJ)(e.id)}:discography`,seeAllLabel:o.ag.get("artist-page.show-discography")},s))})))},le=e=>{const t=e.upcomingConcerts;if(!t||t.length<1)return null;const a=t.map((e=>r().createElement(K.k,{entity:e})));return a.unshift(r().createElement(C,null)),r().createElement("div",{className:G},r().createElement(b.ZP,{value:"headered-grid"},r().createElement(f.P,{title:o.ag.get("concerts_more_events"),total:t.length+1},a)))},ie=e=>{const{concert:t,upcomingConcerts:a,artists:c,albums:n,color:s,headerImageUri:l}=e.concert,i=[{url:l,width:100,height:100}];(0,ae.Y)(s);const b=(0,V.o)();const f="ONLINE"===t.category?o.ag.get("concert_find_virtual_event"):o.ag.get("concert.button.see_tickets");return r().createElement("section",{className:L},r().createElement(m.gF,{backgroundImages:i,backgroundColor:s},r().createElement(m.sP,null,r().createElement(m.T0,null,r().createElement(re,t)),r().createElement(m.xd,null,(0,Z.Yl)(t))),r().createElement(d.W,null,r().createElement("div",{className:H},r().createElement(u.i,{text:(0,Z.Yl)(t)}),r().createElement(v.Z,{draggable:!1,className:Y,to:t.clickThruUrl,target:"_blank"},r().createElement(j.Y,{version:"secondary",className:q,onClick:function(){b({targetUri:`spotify:concert:${t.id}`,intent:"find-concert",type:"click"})}},f))))),r().createElement("div",{className:A},r().createElement(g.I,{backgroundColor:s}),r().createElement("div",{className:M},r().createElement(ne,t),r().createElement(se,{artists:c,albums:n}),r().createElement(le,{upcomingConcerts:a}))))},oe=r().memo(ie);var me=a(60858);const de=r().memo((()=>{const{concertId:e}=(0,s.UO)(),t=(0,n.I0)(),a=`spotify:concert:${e}`,m=(0,n.v9)((e=>(0,i.G6)(a,e)));return(0,c.useEffect)((()=>{t((0,l.l$)(e))}),[t,e]),m?r().createElement(oe,{concert:m}):r().createElement(me.h,{errorMessage:o.ag.get("concert.error.concert_not_found_title")})}))},20557:(e,t,a)=>{"use strict";a.d(t,{Ms:()=>r,b8:()=>n,lJ:()=>s,NL:()=>l,O1:()=>i,Yl:()=>d,ij:()=>u});var c=a(61043);const r=e=>c.ag.formatDate(e,{weekday:"short",month:"short",day:"numeric"}),n=e=>c.ag.formatDate(e,{hour:"numeric",minute:"numeric"}),s=e=>c.ag.formatDate(e,{month:"short"}).toUpperCase(),l=e=>c.ag.formatDate(e,{month:"short",day:"numeric"}).toUpperCase(),i=e=>e<new Date,o={row:{1:e=>c.ag.get("concert.header.entity_title_1",...e),2:e=>c.ag.get("concert.header.entity_title_2",...e),3:e=>c.ag.get("concert.header.entity_title_3",...e),4:e=>c.ag.get("concert.header.entity_title_4",...e),more:e=>c.ag.get("concert.header.entity_title_more",...e)},entity:{1:e=>c.ag.get("concert.header.upcoming_concert_title_1",...e),2:e=>c.ag.get("concert.header.upcoming_concert_title_2",...e),3:e=>c.ag.get("concert.header.upcoming_concert_title_3",...e),4:e=>c.ag.get("concert.header.upcoming_concert_title_4",...e),more:e=>c.ag.get("concert.header.upcoming_concert_title_more",...e)}},m=(e,t)=>{const a=o[t],c=(e=>{try{return e.festival&&e.title?{title:e.title}:{artists:e.artists.map((e=>e.name||e.profile.name))}}catch(e){return null}})(e);if(c){if(c.title)return c.title;if(c.artists)return c.artists.length>4?a.more(c.artists):a[c.artists.length](c.artists)}return""},d=e=>m(e,"row"),u=e=>m(e,"entity")}}]);