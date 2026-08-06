.class Lcom/perm/kate/PhotoViewerActrivity$17;
.super Ljava/lang/Thread;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->deletePhotoTag(Lcom/perm/kate/api/PhotoTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$pt:Lcom/perm/kate/api/PhotoTag;

.field final synthetic val$remove_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/PhotoTag;Lcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->val$pt:Lcom/perm/kate/api/PhotoTag;

    iput-object p3, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->val$remove_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1022
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->val$pt:Lcom/perm/kate/api/PhotoTag;

    iget-object v1, v1, Lcom/perm/kate/api/PhotoTag;->owner_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->val$pt:Lcom/perm/kate/api/PhotoTag;

    iget-wide v2, v2, Lcom/perm/kate/api/PhotoTag;->pid:J

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->val$pt:Lcom/perm/kate/api/PhotoTag;

    iget-wide v4, v4, Lcom/perm/kate/api/PhotoTag;->tag_id:J

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->val$remove_callback:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->removePhotoTag(Ljava/lang/Long;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1023
    return-void
.end method
