.class Lfr/nicolaspomepuy/discreetapprate/AppRate$1;
.super Ljava/lang/Object;
.source "AppRate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/nicolaspomepuy/discreetapprate/AppRate;->showAppRate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

.field final synthetic val$mainView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lfr/nicolaspomepuy/discreetapprate/AppRate;

    .prologue
    .line 427
    iput-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    iput-object p2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;->val$mainView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 430
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;->val$mainView:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$000(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    .line 431
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$100(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$100(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    move-result-object v0

    invoke-interface {v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;->onRateAppDismissed()V

    .line 432
    :cond_0
    return-void
.end method
