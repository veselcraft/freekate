.class Lcom/perm/kate/ProfileLeftFragment$5;
.super Ljava/lang/Object;
.source "ProfileLeftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileLeftFragment;->displayUserOnUiThread()V
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
    .line 189
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$5;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$5;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$5;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileLeftFragment;->access$200(Lcom/perm/kate/ProfileLeftFragment;)Lcom/perm/kate/api/User;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileLeftFragment$5;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v2}, Lcom/perm/kate/ProfileLeftFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/ProfileLeftFragment;->access$500(Lcom/perm/kate/ProfileLeftFragment;Lcom/perm/kate/api/User;Landroid/view/View;)V

    .line 193
    return-void
.end method
