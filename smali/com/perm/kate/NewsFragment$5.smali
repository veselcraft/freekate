.class Lcom/perm/kate/NewsFragment$5;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$ns:Lcom/perm/kate/api/Newsfeed;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$5;->val$ns:Lcom/perm/kate/api/Newsfeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 296
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    new-instance v1, Lcom/perm/kate/NewsFragment$5$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewsFragment$5$1;-><init>(Lcom/perm/kate/NewsFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f010010

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    new-instance v1, Lcom/perm/kate/NewsFragment$5$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewsFragment$5$2;-><init>(Lcom/perm/kate/NewsFragment$5;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    const-string v1, "SNACK_DISPLAY"

    invoke-static {v0, v1}, Lcom/perm/kate/NewsFragment;->access$400(Lcom/perm/kate/NewsFragment;Ljava/lang/String;)V

    return-void
.end method
