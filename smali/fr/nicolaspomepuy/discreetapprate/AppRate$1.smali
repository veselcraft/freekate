.class Lfr/nicolaspomepuy/discreetapprate/AppRate$1;
.super Ljava/lang/Object;
.source "AppRate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

.field final synthetic val$mainView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    iput-object p2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;->val$mainView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 432
    iget-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;->val$mainView:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$000(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    .line 433
    iget-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$100(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$100(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    move-result-object p1

    invoke-interface {p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;->onRateAppDismissed()V

    :cond_0
    return-void
.end method
