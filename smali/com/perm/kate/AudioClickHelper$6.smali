.class Lcom/perm/kate/AudioClickHelper$6;
.super Ljava/lang/Thread;
.source "AudioClickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioClickHelper;->AddAudio(Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$aid:Ljava/lang/Long;

.field final synthetic val$oid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioClickHelper;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$6;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$6;->val$aid:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/AudioClickHelper$6;->val$oid:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 342
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$6;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 343
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$6;->val$aid:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$6;->val$oid:Ljava/lang/Long;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/AudioClickHelper$6;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v4, v4, Lcom/perm/kate/AudioClickHelper;->callback_add:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/AudioClickHelper$6;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v5, v5, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->addAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 344
    return-void
.end method
