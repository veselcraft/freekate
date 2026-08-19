.class Lcom/perm/kate/SinglePhotoViewer$5;
.super Ljava/lang/Thread;
.source "SinglePhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SinglePhotoViewer;->onAccept(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SinglePhotoViewer;

.field final synthetic val$ptag:Lcom/perm/kate/api/PhotoTag;

.field final synthetic val$put_tag_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/SinglePhotoViewer;Lcom/perm/kate/api/PhotoTag;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$5;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    iput-object p2, p0, Lcom/perm/kate/SinglePhotoViewer$5;->val$ptag:Lcom/perm/kate/api/PhotoTag;

    iput-object p3, p0, Lcom/perm/kate/SinglePhotoViewer$5;->val$put_tag_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 505
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$5;->val$ptag:Lcom/perm/kate/api/PhotoTag;

    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$5;->val$put_tag_callback:Lcom/perm/kate/session/Callback;

    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$5;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->putPhotoTag(Lcom/perm/kate/api/PhotoTag;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
