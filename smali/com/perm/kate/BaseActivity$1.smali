.class Lcom/perm/kate/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lru/begun/adlib/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BaseActivity;->initBegun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$1;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$1;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->access$000(Lcom/perm/kate/BaseActivity;)Lru/begun/adlib/AdView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const-string v0, "AdLoaded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$1;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->access$000(Lcom/perm/kate/BaseActivity;)Lru/begun/adlib/AdView;

    move-result-object v0

    const-string v1, "startAd"

    invoke-virtual {v0, v1}, Lru/begun/adlib/AdView;->api(Ljava/lang/String;)V

    .line 265
    :cond_2
    const-string v0, "AdError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$1;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->access$100(Lcom/perm/kate/BaseActivity;)V

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 248
    iget-object v2, p0, Lcom/perm/kate/BaseActivity$1;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v2}, Lcom/perm/kate/BaseActivity;->access$000(Lcom/perm/kate/BaseActivity;)Lru/begun/adlib/AdView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lru/begun/adlib/RequestParam;>;"
    new-instance v1, Lru/begun/adlib/RequestParam;

    invoke-direct {v1}, Lru/begun/adlib/RequestParam;-><init>()V

    .line 252
    .local v1, "rp":Lru/begun/adlib/RequestParam;
    const-string v2, "environmentVars"

    iput-object v2, v1, Lru/begun/adlib/RequestParam;->name:Ljava/lang/String;

    .line 253
    const-string v2, "pad_id:304401590|block_id:304408192"

    iput-object v2, v1, Lru/begun/adlib/RequestParam;->value:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v2, p0, Lcom/perm/kate/BaseActivity$1;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v2}, Lcom/perm/kate/BaseActivity;->access$000(Lcom/perm/kate/BaseActivity;)Lru/begun/adlib/AdView;

    move-result-object v2

    const-string v3, "initAd"

    invoke-virtual {v2, v3, v0}, Lru/begun/adlib/AdView;->api(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
