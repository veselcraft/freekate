.class Lcom/perm/kate/ExtraProfileFragment$3;
.super Ljava/lang/Object;
.source "ExtraProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ExtraProfileFragment;->hideLoadingTextInUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ExtraProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ExtraProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ExtraProfileFragment;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$3;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$3;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v0}, Lcom/perm/kate/ExtraProfileFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    return-void
.end method
