.class Lcom/perm/kate/VideoMenu$4;
.super Ljava/lang/Thread;
.source "VideoMenu.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;

.field final synthetic val$callback_add:Lcom/perm/kate/session/Callback;

.field final synthetic val$oid:Ljava/lang/Long;

.field final synthetic val$vid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 263
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

    .line 266
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/VideoMenu$4;->val$vid:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/VideoMenu$4;->val$oid:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/VideoMenu$4;->val$callback_add:Lcom/perm/kate/session/Callback;

    iget-object v3, p0, Lcom/perm/kate/VideoMenu$4;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v5, v3, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->addVideo(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
