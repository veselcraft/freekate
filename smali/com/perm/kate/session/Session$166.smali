.class Lcom/perm/kate/session/Session$166;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->editAudio(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$audio_id:J

.field final synthetic val$genre_id:Ljava/lang/Integer;

.field final synthetic val$no_search:Ljava/lang/Integer;

.field final synthetic val$owner_id:J

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/perm/kate/session/Session$166;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$166;->val$owner_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$166;->val$audio_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$166;->val$artist:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$166;->val$title:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/session/Session$166;->val$text:Ljava/lang/String;

    iput-object p11, p0, Lcom/perm/kate/session/Session$166;->val$genre_id:Ljava/lang/Integer;

    iput-object p12, p0, Lcom/perm/kate/session/Session$166;->val$no_search:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/perm/kate/session/Session$166;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$166;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$166;->val$audio_id:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$166;->val$artist:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$166;->val$title:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/session/Session$166;->val$text:Ljava/lang/String;

    iget-object v9, p0, Lcom/perm/kate/session/Session$166;->val$genre_id:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/perm/kate/session/Session$166;->val$no_search:Ljava/lang/Integer;

    iget-object v11, p0, Lcom/perm/kate/session/Session$166;->captcha_key:Ljava/lang/String;

    iget-object v12, p0, Lcom/perm/kate/session/Session$166;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v12}, Lcom/perm/kate/api/Api;->editAudio(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$166;->res:Ljava/lang/Object;

    .line 1723
    return-void
.end method
