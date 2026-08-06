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
    .param p1, "this$0"    # Lcom/perm/kate/EditGroupManagerActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 130
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupManagerActivity;->access$400(Lcom/perm/kate/EditGroupManagerActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupManagerActivity;->access$500(Lcom/perm/kate/EditGroupManagerActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupManagerActivity;->access$600(Lcom/perm/kate/EditGroupManagerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupManagerActivity;->access$000(Lcom/perm/kate/EditGroupManagerActivity;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupManagerActivity;->access$100(Lcom/perm/kate/EditGroupManagerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupManagerActivity;->access$700(Lcom/perm/kate/EditGroupManagerActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupManagerActivity;->access$800(Lcom/perm/kate/EditGroupManagerActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v11

    iget-object v12, p0, Lcom/perm/kate/EditGroupManagerActivity$4;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    move-object v10, v9

    invoke-virtual/range {v1 .. v12}, Lcom/perm/kate/session/Session;->groupsEditManager(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    move-object v6, v9

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
