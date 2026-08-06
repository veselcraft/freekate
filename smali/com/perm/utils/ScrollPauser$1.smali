.class Lcom/perm/utils/ScrollPauser$1;
.super Ljava/lang/Object;
.source "ScrollPauser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/utils/ScrollPauser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/utils/ScrollPauser;


# direct methods
.method constructor <init>(Lcom/perm/utils/ScrollPauser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/utils/ScrollPauser;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/perm/utils/ScrollPauser$1;->this$0:Lcom/perm/utils/ScrollPauser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader;->resume()V

    .line 35
    return-void
.end method
