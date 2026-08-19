.class Lcom/perm/kate/WebActivity$2;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WebActivity;->getPageUrl(JLjava/lang/Long;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WebActivity;

.field final synthetic val$download_page_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$group_id:J

.field final synthetic val$page_id:Ljava/lang/Long;

.field final synthetic val$page_title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/WebActivity;JLjava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/perm/kate/WebActivity$2;->this$0:Lcom/perm/kate/WebActivity;

    iput-wide p2, p0, Lcom/perm/kate/WebActivity$2;->val$group_id:J

    iput-object p4, p0, Lcom/perm/kate/WebActivity$2;->val$page_id:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/WebActivity$2;->val$page_title:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/WebActivity$2;->val$download_page_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 117
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, p0, Lcom/perm/kate/WebActivity$2;->val$group_id:J

    iget-object v3, p0, Lcom/perm/kate/WebActivity$2;->val$page_id:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/WebActivity$2;->val$page_title:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/WebActivity$2;->val$download_page_callback:Lcom/perm/kate/session/Callback;

    iget-object v6, p0, Lcom/perm/kate/WebActivity$2;->this$0:Lcom/perm/kate/WebActivity;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getPageUrl(JLjava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
