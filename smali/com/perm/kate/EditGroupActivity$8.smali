.class Lcom/perm/kate/EditGroupActivity$8;
.super Ljava/lang/Thread;
.source "EditGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditGroupActivity;->saveSettingsGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity$8;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 544
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$8;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v1}, Lcom/perm/kate/EditGroupActivity;->access$700(Lcom/perm/kate/EditGroupActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/EditGroupActivity$8;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v3}, Lcom/perm/kate/EditGroupActivity;->access$600(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/api/GroupSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/EditGroupActivity$8;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v4}, Lcom/perm/kate/EditGroupActivity;->access$1500(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/EditGroupActivity$8;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->editGroupSettings(JLcom/perm/kate/api/GroupSettings;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
