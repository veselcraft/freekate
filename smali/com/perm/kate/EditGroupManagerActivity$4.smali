.class Lcom/perm/kate/EditGroupManagerActivity$4;
.super Ljava/lang/Thread;
.source "EditGroupManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditGroupManagerActivity;->doGroupsEditManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupManagerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupManagerActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 130
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v1}, Lcom/perm/kate/EditGroupManagerActivity;->access$400(Lcom/perm/kate/EditGroupManagerActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v3}, Lcom/perm/kate/EditGroupManagerActivity;->access$500(Lcom/perm/kate/EditGroupManagerActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v5}, Lcom/perm/kate/EditGroupManagerActivity;->access$600(Lcom/perm/kate/EditGroupManagerActivity;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v5}, Lcom/perm/kate/EditGroupManagerActivity;->access$000(Lcom/perm/kate/EditGroupManagerActivity;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v6}, Lcom/perm/kate/EditGroupManagerActivity;->access$100(Lcom/perm/kate/EditGroupManagerActivity;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v7}, Lcom/perm/kate/EditGroupManagerActivity;->access$700(Lcom/perm/kate/EditGroupManagerActivity;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupManagerActivity;->access$800(Lcom/perm/kate/EditGroupManagerActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v10

    iget-object v11, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-virtual/range {v0 .. v11}, Lcom/perm/kate/session/Session;->groupsEditManager(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
