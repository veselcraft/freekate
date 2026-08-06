.class Lcom/perm/kate/AttachmentsHelper$8;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 961
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$8;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    .line 965
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/api/Document;

    .line 966
    .local v10, "document":Lcom/perm/kate/api/Document;
    new-instance v0, Lcom/perm/kate/DocClickHelper;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$8;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/DocClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;)V

    iget-object v1, v10, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    iget-object v2, v10, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    iget-object v3, v10, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    iget-wide v4, v10, Lcom/perm/kate/api/Document;->id:J

    iget-wide v6, v10, Lcom/perm/kate/api/Document;->owner_id:J

    iget-object v8, v10, Lcom/perm/kate/api/Document;->access_key:Ljava/lang/String;

    iget-object v9, v10, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/DocClickHelper;->click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    .end local v10    # "document":Lcom/perm/kate/api/Document;
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v11

    .line 968
    .local v11, "th":Ljava/lang/Throwable;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 969
    invoke-static {v11, v12}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
