import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideoRecord extends FirestoreRecord {
  VideoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "video_path" field.
  String? _videoPath;
  String get videoPath => _videoPath ?? '';
  bool hasVideoPath() => _videoPath != null;

  // "Video_description" field.
  String? _videoDescription;
  String get videoDescription => _videoDescription ?? '';
  bool hasVideoDescription() => _videoDescription != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "commentRef" field.
  DocumentReference? _commentRef;
  DocumentReference? get commentRef => _commentRef;
  bool hasCommentRef() => _commentRef != null;

  // "Videoid" field.
  int? _videoid;
  int get videoid => _videoid ?? 0;
  bool hasVideoid() => _videoid != null;

  // "num_like" field.
  int? _numLike;
  int get numLike => _numLike ?? 0;
  bool hasNumLike() => _numLike != null;

  void _initializeFields() {
    _videoPath = snapshotData['video_path'] as String?;
    _videoDescription = snapshotData['Video_description'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _likes = getDataList(snapshotData['likes']);
    _commentRef = snapshotData['commentRef'] as DocumentReference?;
    _videoid = castToType<int>(snapshotData['Videoid']);
    _numLike = castToType<int>(snapshotData['num_like']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('video');

  static Stream<VideoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideoRecord.fromSnapshot(s));

  static Future<VideoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideoRecord.fromSnapshot(s));

  static VideoRecord fromSnapshot(DocumentSnapshot snapshot) => VideoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideoRecordData({
  String? videoPath,
  String? videoDescription,
  DateTime? date,
  DocumentReference? commentRef,
  int? videoid,
  int? numLike,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'video_path': videoPath,
      'Video_description': videoDescription,
      'date': date,
      'commentRef': commentRef,
      'Videoid': videoid,
      'num_like': numLike,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideoRecordDocumentEquality implements Equality<VideoRecord> {
  const VideoRecordDocumentEquality();

  @override
  bool equals(VideoRecord? e1, VideoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.videoPath == e2?.videoPath &&
        e1?.videoDescription == e2?.videoDescription &&
        e1?.date == e2?.date &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        e1?.commentRef == e2?.commentRef &&
        e1?.videoid == e2?.videoid &&
        e1?.numLike == e2?.numLike;
  }

  @override
  int hash(VideoRecord? e) => const ListEquality().hash([
        e?.videoPath,
        e?.videoDescription,
        e?.date,
        e?.likes,
        e?.commentRef,
        e?.videoid,
        e?.numLike
      ]);

  @override
  bool isValidKey(Object? o) => o is VideoRecord;
}
