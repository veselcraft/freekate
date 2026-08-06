.class Lcom/perm/kate/VideoMenu$4;
.super Ljava/lang/Thread;
.source "VideoMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoMenu;->AddVideo(Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;

.field final synthetic val$callback_add:Lcom/perm/kate/session/Callback;

.field final synthetic val$oid:Ljava/lang/Long;

.field final synthetic val$vid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoMenu;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$4;->this$0:Lcom/perm/kate/VideoMenu;

    iput-object p2, p0, Lcom/perm/kate/VideoMenu$4;->val$vid:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/VideoMenu$4;->val$oid:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/VideoMenu$4;->val$callback_add:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 221
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/VideoMenu$4;->val$vid:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/VideoMenu$4;->val$oid:Ljava/lang/Long;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/VideoMenu$4;->val$callback_add:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/VideoMenu$4;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v5, v5, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->addVideo(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 222
    return-void
.end method
