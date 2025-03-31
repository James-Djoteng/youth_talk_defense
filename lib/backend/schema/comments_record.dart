import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "user_photo" field.
  DocumentReference? _userPhoto;
  DocumentReference? get userPhoto => _userPhoto;
  bool hasUserPhoto() => _userPhoto != null;

  // "comment_number" field.
  int? _commentNumber;
  int get commentNumber => _commentNumber ?? 0;
  bool hasCommentNumber() => _commentNumber != null;

  // "videoRef" field.
  DocumentReference? _videoRef;
  DocumentReference? get videoRef => _videoRef;
  bool hasVideoRef() => _videoRef != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "num_like" field.
  int? _numLike;
  int get numLike => _numLike ?? 0;
  bool hasNumLike() => _numLike != null;

  // "videoId" field.
  int? _videoId;
  int get videoId => _videoId ?? 0;
  bool hasVideoId() => _videoId != null;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _userPhoto = snapshotData['user_photo'] as DocumentReference?;
    _commentNumber = castToType<int>(snapshotData['comment_number']);
    _videoRef = snapshotData['videoRef'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _numLike = castToType<int>(snapshotData['num_like']);
    _videoId = castToType<int>(snapshotData['videoId']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  String? text,
  DateTime? timestamp,
  DocumentReference? userPhoto,
  int? commentNumber,
  DocumentReference? videoRef,
  DocumentReference? userRef,
  int? numLike,
  int? videoId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
      'timestamp': timestamp,
      'user_photo': userPhoto,
      'comment_number': commentNumber,
      'videoRef': videoRef,
      'userRef': userRef,
      'num_like': numLike,
      'videoId': videoId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    return e1?.text == e2?.text &&
        e1?.timestamp == e2?.timestamp &&
        e1?.userPhoto == e2?.userPhoto &&
        e1?.commentNumber == e2?.commentNumber &&
        e1?.videoRef == e2?.videoRef &&
        e1?.userRef == e2?.userRef &&
        e1?.numLike == e2?.numLike &&
        e1?.videoId == e2?.videoId;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash([
        e?.text,
        e?.timestamp,
        e?.userPhoto,
        e?.commentNumber,
        e?.videoRef,
        e?.userRef,
        e?.numLike,
        e?.videoId
      ]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
