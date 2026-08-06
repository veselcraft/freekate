.class Lcom/perm/kate/session/Session$200;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->groupsEditManager(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$contact_email:Ljava/lang/String;

.field final synthetic val$contact_phone:Ljava/lang/String;

.field final synthetic val$contact_position:Ljava/lang/String;

.field final synthetic val$group_id:J

.field final synthetic val$is_contact:Ljava/lang/Integer;

.field final synthetic val$role:Ljava/lang/String;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2026
    iput-object p1, p0, Lcom/perm/kate/session/Session$200;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$200;->val$group_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$200;->val$user_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$200;->val$role:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$200;->val$is_contact:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/perm/kate/session/Session$200;->val$contact_position:Ljava/lang/String;

    iput-object p11, p0, Lcom/perm/kate/session/Session$200;->val$contact_phone:Ljava/lang/String;

    iput-object p12, p0, Lcom/perm/kate/session/Session$200;->val$contact_email:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/perm/kate/session/Session$200;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$200;->val$group_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$200;->val$user_id:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$200;->val$role:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$200;->val$is_contact:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/perm/kate/session/Session$200;->val$contact_position:Ljava/lang/String;

    iget-object v9, p0, Lcom/perm/kate/session/Session$200;->val$contact_phone:Ljava/lang/String;

    iget-object v10, p0, Lcom/perm/kate/session/Session$200;->val$contact_email:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/api/Api;->groupsEditManager(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$200;->res:Ljava/lang/Object;

    .line 2030
    return-void
.end method
