.class Lcom/perm/kate/ProfileLeftFragment$1;
.super Ljava/lang/Object;
.source "ProfileLeftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileLeftFragment;->onCreate(Landroid/os/Bundle;)V
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
    .line 90
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$1;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$1;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v0}, Lcom/perm/kate/ProfileLeftFragment;->refreshInThread()V

    .line 94
    return-void
.end method
