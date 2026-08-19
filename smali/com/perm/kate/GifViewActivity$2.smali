.class Lcom/perm/kate/GifViewActivity$2;
.super Ljava/lang/Object;
.source "GifViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GifViewActivity;->downloadOrDisplayOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GifViewActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GifViewActivity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity$2;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$2;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v0}, Lcom/perm/kate/GifViewActivity;->access$300(Lcom/perm/kate/GifViewActivity;)V

    return-void
.end method
