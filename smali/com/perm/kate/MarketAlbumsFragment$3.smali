.class Lcom/perm/kate/MarketAlbumsFragment$3;
.super Ljava/lang/Object;
.source "MarketAlbumsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MarketAlbumsFragment;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketAlbumsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketAlbumsFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$3;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$3;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-static {v0}, Lcom/perm/kate/MarketAlbumsFragment;->access$200(Lcom/perm/kate/MarketAlbumsFragment;)V

    .line 111
    return-void
.end method
