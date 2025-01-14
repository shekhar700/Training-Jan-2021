const mongoose = require('mongoose')

const assignemntSchema = new mongoose.Schema({
  ActionCode: { type: String },
  ActionReasonCode: { type: String },
  ActualTerminationDate: { type: Date },
  AssignmentCategory: { type: String },
  assignmentDFF: { type: Array },
  assignmentExtraInformation: { type: Array },
  AssignmentId: { type: Number },
  AssignmentName: { type: String },
  AssignmentNumber: { type: String },
  AssignmentProjectedEndDate: { type: Date },
  AssignmentStatus: { type: String },
  AssignmentStatusTypeId: { type: Number },
  BusinessUnitId: { type: Number },
  CreationDate: { type: Date },
  DefaultExpenseAccount: { type: String },
  DepartmentId: { type: Number },
  EffectiveEndDate: { type: Date },
  EffectiveStartDate: { type: Date },
  empreps: { type: Array },
  EndTime: { type: String },
  Frequency: { type: String },
  FullPartTime: { type: String },
  GradeId: { type: Number },
  GradeLadderId: { type: Number },
  JobId: { type: Number },
  LastUpdateDate: { type: Date },
  LegalEntityId: { type: Number },
  links: { type: Array },
  LocationId: { type: Number },
  ManagerAssignmentId: { type: Number },
  ManagerId: { type: Number },
})

module.exports = mongoose.model('Assignments', assignemntSchema)