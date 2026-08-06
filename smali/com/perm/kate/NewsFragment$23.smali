.class Lcom/perm/kate/NewsFragment$23;
.super Ljava/lang/Thread;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->getNewsLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$23;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1089
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 1091
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$23;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v1}, Lcom/perm/kate/NewsFragment;->access$1500(Lcom/perm/kate/NewsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$23;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getLists(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
