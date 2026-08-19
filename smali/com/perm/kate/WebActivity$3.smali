.class Lcom/perm/kate/WebActivity$3;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WebActivity;->loadPageByUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WebActivity;

.field final synthetic val$page_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/WebActivity;Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/perm/kate/WebActivity$3;->this$0:Lcom/perm/kate/WebActivity;

    iput-object p2, p0, Lcom/perm/kate/WebActivity$3;->val$page_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/perm/kate/WebActivity$3;->this$0:Lcom/perm/kate/WebActivity;

    invoke-static {v0}, Lcom/perm/kate/WebActivity;->access$100(Lcom/perm/kate/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/WebActivity$3;->val$page_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
