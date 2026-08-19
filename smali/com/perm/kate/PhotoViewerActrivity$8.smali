.class Lcom/perm/kate/PhotoViewerActrivity$8;
.super Ljava/lang/Thread;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->makeMainProfilePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$8;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 742
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$8$1;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$8;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/PhotoViewerActrivity$8$1;-><init>(Lcom/perm/kate/PhotoViewerActrivity$8;Landroid/app/Activity;)V

    .line 768
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity$8;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity$8;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v1, v2, v0, v3}, Lcom/perm/kate/session/Session;->makeMainProfilePhoto(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
