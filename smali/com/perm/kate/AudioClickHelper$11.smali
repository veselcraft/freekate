.class Lcom/perm/kate/AudioClickHelper$11;
.super Ljava/lang/Thread;
.source "AudioClickHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$aid:Ljava/lang/Long;

.field final synthetic val$oid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$11;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$11;->val$aid:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/AudioClickHelper$11;->val$oid:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 570
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$11;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 571
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    new-instance v3, Ljava/util/ArrayList;

    new-array v0, v1, [Ljava/lang/Long;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$11;->val$aid:Ljava/lang/Long;

    const/4 v8, 0x0

    aput-object v1, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$11;->val$oid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$11;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v6, v0, Lcom/perm/kate/AudioClickHelper;->callback_delete:Lcom/perm/kate/session/Callback;

    iget-object v7, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->deleteAudios(Ljava/util/ArrayList;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 572
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$11;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, v8}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
