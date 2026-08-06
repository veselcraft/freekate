.class Lcom/perm/kate/NewsFragment$2;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$2;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$2;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v0}, Lcom/perm/kate/NewsFragment;->access$000(Lcom/perm/kate/NewsFragment;)V

    .line 130
    return-void
.end method
