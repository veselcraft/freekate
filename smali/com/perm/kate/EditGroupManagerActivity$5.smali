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

    .line 137
    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$5;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 148
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 149
    iget-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$5;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/perm/kate/EditGroupManagerActivity$5;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 141
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 143
    iget-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$5;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupManagerActivity;->access$900(Lcom/perm/kate/EditGroupManagerActivity;)V

    :cond_0
    return-void
.end method
