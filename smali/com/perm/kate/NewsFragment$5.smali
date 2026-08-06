.class Lcom/perm/kate/NewsFragment$5;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->displaySnackBar(Lcom/perm/kate/api/Newsfeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$ns:Lcom/perm/kate/api/Newsfeed;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$5;->val$ns:Lcom/perm/kate/api/Newsfeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 290
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/NewsFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 312
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/NewsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e02bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 293
    .local v1, "snackBar":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    new-instance v2, Lcom/perm/kate/NewsFragment$5$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/NewsFragment$5$1;-><init>(Lcom/perm/kate/NewsFragment$5;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f04000e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 303
    .local v0, "fadeInAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 305
    new-instance v2, Lcom/perm/kate/NewsFragment$5$2;

    invoke-direct {v2, p0}, Lcom/perm/kate/NewsFragment$5$2;-><init>(Lcom/perm/kate/NewsFragment$5;)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    const-string v3, "SNACK_DISPLAY"

    invoke-static {v2, v3}, Lcom/perm/kate/NewsFragment;->access$400(Lcom/perm/kate/NewsFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
