.class Lcom/perm/kate/EditGroupManagerActivity$5;
.super Lcom/perm/kate/session/Callback;
.source "EditGroupManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditGroupManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupManagerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupManagerActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditGroupManagerActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$5;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 149
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$5;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditGroupManagerActivity;->showProgressBar(Z)V

    .line 150
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/perm/kate/EditGroupManagerActivity$5;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/EditGroupManagerActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 141
    check-cast v0, Ljava/lang/Integer;

    .line 142
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/perm/kate/EditGroupManagerActivity$5;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {v1}, Lcom/perm/kate/EditGroupManagerActivity;->access$900(Lcom/perm/kate/EditGroupManagerActivity;)V

    .line 144
    :cond_0
    return-void
.end method
