.class final Lcom/perm/utils/VideoAlbumsHelper$6;
.super Ljava/lang/Object;
.source "VideoAlbumsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/VideoAlbumsHelper;->showAlbumsDialog(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$albums_ids:[J

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J

.field final synthetic val$video_owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;JJJ[J)V
    .locals 0

    .prologue
    .line 146
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
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 149
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$video_id:J

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$video_owner_id:J

    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$6;->val$albums_ids:[J

    aget-wide v8, v0, p2

    sget-object v11, Lcom/perm/utils/VideoAlbumsHelper;->errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    move v10, p3

    invoke-static/range {v1 .. v11}, Lcom/perm/utils/VideoAlbumsHelper;->access$400(Lcom/perm/kate/BaseActivity;JJJJZLcom/perm/utils/VideoAlbumsHelper$ErrorCallback;)V

    .line 150
    return-void
.end method
