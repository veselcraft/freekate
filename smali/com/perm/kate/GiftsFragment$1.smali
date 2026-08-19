.class Lcom/perm/kate/GiftsFragment$1;
.super Ljava/lang/Thread;
.source "GiftsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GiftsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GiftsFragment;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/perm/kate/GiftsFragment$1;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 77
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GiftsFragment$1;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {v1}, Lcom/perm/kate/GiftsFragment;->access$000(Lcom/perm/kate/GiftsFragment;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/GiftsFragment$1;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {v3}, Lcom/perm/kate/GiftsFragment;->access$100(Lcom/perm/kate/GiftsFragment;)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/GiftsFragment$1;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {v4}, Lcom/perm/kate/GiftsFragment;->access$200(Lcom/perm/kate/GiftsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/GiftsFragment$1;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getGifts(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
