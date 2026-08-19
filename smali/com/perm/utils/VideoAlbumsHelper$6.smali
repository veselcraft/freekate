.class Lcom/perm/utils/VideoAlbumsHelper$6;
.super Ljava/lang/Object;
.source "VideoAlbumsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$albums_ids:[J

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J

.field final synthetic val$video_owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;JJJ[J)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-wide p2, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$owner_id:J

    iput-wide p4, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$video_id:J

    iput-wide p6, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$video_owner_id:J

    iput-object p8, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$albums_ids:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 11

    .line 148
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v1, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$owner_id:J

    iget-wide v3, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$video_id:J

    iget-wide v5, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$video_owner_id:J

    iget-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$albums_ids:[J

    aget-wide v7, p1, p2

    sget-object v10, Lcom/perm/utils/VideoAlbumsHelper;->errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    move v9, p3

    invoke-static/range {v0 .. v10}, Lcom/perm/utils/VideoAlbumsHelper;->access$500(Lcom/perm/kate/BaseActivity;JJJJZLcom/perm/utils/VideoAlbumsHelper$ErrorCallback;)V

    return-void
.end method
