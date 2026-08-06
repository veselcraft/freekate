.class Lcom/perm/kate/ProfileLeftFragment$11;
.super Ljava/lang/Object;
.source "ProfileLeftFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileLeftFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileLeftFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileLeftFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileLeftFragment;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$11;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$11;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v0, v0, Lcom/perm/kate/ProfileLeftFragment;->listener:Lcom/perm/kate/ProfileActivityCallback;

    const-string v1, "audio"

    invoke-interface {v0, v1}, Lcom/perm/kate/ProfileActivityCallback;->onTabSelected(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$11;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/ProfileLeftFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 422
    return-void
.end method
