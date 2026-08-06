.class Lfr/nicolaspomepuy/discreetapprate/AppRate$3;
.super Ljava/lang/Object;
.source "AppRate.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 524
    iput-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$3;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    iput-object p2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$3;->val$mainView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$3;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$3;->val$mainView:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$400(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    .line 528
    return-void
.end method
