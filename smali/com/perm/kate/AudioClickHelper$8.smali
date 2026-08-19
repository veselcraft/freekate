.class Lcom/perm/kate/AudioClickHelper$8;
.super Ljava/lang/Thread;
.source "AudioClickHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$access_key:Ljava/lang/String;

.field final synthetic val$aid:Ljava/lang/Long;

.field final synthetic val$oid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$8;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$8;->val$aid:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/AudioClickHelper$8;->val$oid:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/AudioClickHelper$8;->val$access_key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 519
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$8;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 520
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/kate/AudioClickHelper$8;->val$aid:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/AudioClickHelper$8;->val$oid:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/AudioClickHelper$8;->val$access_key:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$8;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v7, v0, Lcom/perm/kate/AudioClickHelper;->callback_add:Lcom/perm/kate/session/Callback;

    iget-object v8, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->addAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
