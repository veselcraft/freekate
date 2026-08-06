.class final Lcom/perm/kate/GifViewActivity$6;
.super Ljava/lang/Thread;
.source "GifViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GifViewActivity;->addToMyDocs(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$access_key:Ljava/lang/String;

.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$document_id:J

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;JJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity$6;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-wide p2, p0, Lcom/perm/kate/GifViewActivity$6;->val$owner_id:J

    iput-wide p4, p0, Lcom/perm/kate/GifViewActivity$6;->val$document_id:J

    iput-object p6, p0, Lcom/perm/kate/GifViewActivity$6;->val$access_key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 437
    new-instance v7, Lcom/perm/kate/GifViewActivity$6$1;

    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$6;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v7, p0, v0}, Lcom/perm/kate/GifViewActivity$6$1;-><init>(Lcom/perm/kate/GifViewActivity$6;Landroid/app/Activity;)V

    .line 443
    .local v7, "callback":Lcom/perm/kate/session/Callback;
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/GifViewActivity$6;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/kate/GifViewActivity$6;->val$document_id:J

    iget-object v6, p0, Lcom/perm/kate/GifViewActivity$6;->val$access_key:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/GifViewActivity$6;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->docsAdd(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 444
    return-void
.end method
