.class Lcom/perm/kate/GiftsFragment$5;
.super Ljava/lang/Thread;
.source "GiftsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GiftsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GiftsFragment;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/perm/kate/GiftsFragment$5;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 171
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment$5;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {v0}, Lcom/perm/kate/GiftsFragment;->access$300(Lcom/perm/kate/GiftsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 174
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GiftsFragment$5;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {v0}, Lcom/perm/kate/GiftsFragment;->access$000(Lcom/perm/kate/GiftsFragment;)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, p0, Lcom/perm/kate/GiftsFragment$5;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {v0}, Lcom/perm/kate/GiftsFragment;->access$100(Lcom/perm/kate/GiftsFragment;)Ljava/lang/Long;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/GiftsFragment$5;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {v0}, Lcom/perm/kate/GiftsFragment;->access$900(Lcom/perm/kate/GiftsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/GiftsFragment$5;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->getGifts(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
