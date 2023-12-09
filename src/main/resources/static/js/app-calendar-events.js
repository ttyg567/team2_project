/**
 * App Calendar Events
 */

'use strict';

let date = new Date();
let nextDay = new Date(new Date().getTime() + 24 * 60 * 60 * 1000);
// prettier-ignore
let nextMonth = date.getMonth() === 11 ? new Date(date.getFullYear() + 1, 0, 1) : new Date(date.getFullYear(), date.getMonth() + 1, 1);
// prettier-ignore
let prevMonth = date.getMonth() === 11 ? new Date(date.getFullYear() - 1, 0, 1) : new Date(date.getFullYear(), date.getMonth() - 1, 1);

let events = [
/*  {
    id: 1,
    url: '',
    title: '개발직무 양성 프로젝트 보고서 제출',
    start: nextDay,
    end: nextDay,
    allDay: true,
    extendedProps: {
      calendar: 'Business'
    }
  },*/
  {
    id: 2,
    url: '',
    title: '김연아 고객 상담 일정 10:00',
    start: new Date(date.getFullYear(), date.getMonth() + 1, -25),
    end: new Date(date.getFullYear(), date.getMonth() + 1, -25),
    allDay: true,
    extendedProps: {
      calendar: 'Family'
    }
  },
  {
    id: 3,
    url: '',
    title: '휴가',
    allDay: true,
    start: new Date(date.getFullYear(), date.getMonth() + 1, -24),
    end: new Date(date.getFullYear(), date.getMonth() + 1, -21),
    extendedProps: {
      calendar: 'Holiday'
    }
  },
/*  {
    id: 4,
    url: '',
    title: "병원 예약",
    start: new Date(date.getFullYear(), date.getMonth() + 1, -11),
    end: new Date(date.getFullYear(), date.getMonth() + 1, -10),
    allDay: true,
    extendedProps: {
      calendar: 'Personal'
    }
  },*/
  {
    id: 5,
    url: '',
    title: '9:00 디지캠퍼스 연수',
    start: new Date(date.getFullYear(), date.getMonth() + 1, -21),
    end: new Date(date.getFullYear(), date.getMonth() + 1, -21),
    allDay: true,
    extendedProps: {
      calendar: 'Business'
    }
  },
  {
    id: 6,
    url: '',
    title: '20:00 영어 학원',
    start: new Date(date.getFullYear(), date.getMonth() + 1, -19),
    end: new Date(date.getFullYear(), date.getMonth() + 1, -19),
    allDay: true,
    extendedProps: {
      calendar: 'Business'
    }
  },
 /* {
    id: 7,
    url: '',
    title: '가족 저녁 식사',
    start: new Date(date.getFullYear(), date.getMonth() + 1, -14),
    end: new Date(date.getFullYear(), date.getMonth() + 1, -14),
    allDay: true,
    extendedProps: {
      calendar: 'Family'
    }
  },*/
  {
    id: 8,
    url: '',
    title: '김연아 고객 메일 발송',
    start: new Date(date.getFullYear(), date.getMonth() + 1, -10),
    end: new Date(date.getFullYear(), date.getMonth() + 1, -10),
    allDay: true,
    extendedProps: {
      calendar: 'Personal'
    }
  },
  {
    id: 9,
    url: '',
    title: '프로젝트 보고서제출',
    start: date,
    end: date,
    allDay: true,
    extendedProps: {
      calendar: 'Personal'
    }
  },
  {
    id: 10,
    url: '',
    title: '임대차 계약서 작성',
    start: new Date(date.getFullYear(), date.getMonth() + 1, -6),
    end: new Date(date.getFullYear(), date.getMonth() + 1, -6),
    allDay: true,
    extendedProps: {
      calendar: 'Personal'
    }
  }
];
