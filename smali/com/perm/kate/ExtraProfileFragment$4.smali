.class Lcom/perm/kate/ExtraProfileFragment$4;
.super Ljava/lang/Object;
.source "ExtraProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ExtraProfileFragment;->displayUserInfoOnUiThread()V
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
    .line 194
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$4;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$4;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ExtraProfileFragment;->access$500(Lcom/perm/kate/ExtraProfileFragment;)V

    .line 198
    return-void
.end method
