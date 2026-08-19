.class Lcom/perm/kate/EditGroupManagerActivity$2;
.super Ljava/lang/Object;
.source "EditGroupManagerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
.method constructor <init>(Lcom/perm/kate/EditGroupManagerActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$2;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$2;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/EditGroupManagerActivity;->access$102(Lcom/perm/kate/EditGroupManagerActivity;Z)Z

    .line 86
    iget-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$2;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupManagerActivity;->access$200(Lcom/perm/kate/EditGroupManagerActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/EditGroupManagerActivity$2;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-static {p2}, Lcom/perm/kate/EditGroupManagerActivity;->access$100(Lcom/perm/kate/EditGroupManagerActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method
