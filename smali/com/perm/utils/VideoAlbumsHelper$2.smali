.class final Lcom/perm/utils/VideoAlbumsHelper$2;
.super Ljava/lang/Thread;
.source "VideoAlbumsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/VideoAlbumsHelper;->getAlbums(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;JLcom/perm/kate/session/Callback;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-wide p2, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$owner_id:J

    iput-object p4, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 68
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, v6}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 71
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$owner_id:J

    const/4 v4, 0x0

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getVideoAlbums(JLjava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 72
    return-void
.end method
