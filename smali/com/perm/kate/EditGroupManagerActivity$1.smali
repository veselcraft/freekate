.class Lcom/perm/kate/EditGroupManagerActivity$1;
.super Ljava/lang/Object;
.source "EditGroupManagerActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 70
    iput-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$1;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f090290

    if-ne p2, p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$1;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    const-string p2, "administrator"

    invoke-static {p1, p2}, Lcom/perm/kate/EditGroupManagerActivity;->access$002(Lcom/perm/kate/EditGroupManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const p1, 0x7f090292

    if-ne p2, p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$1;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    const-string p2, "editor"

    invoke-static {p1, p2}, Lcom/perm/kate/EditGroupManagerActivity;->access$002(Lcom/perm/kate/EditGroupManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/EditGroupManagerActivity$1;->this$0:Lcom/perm/kate/EditGroupManagerActivity;

    const-string p2, "moderator"

    invoke-static {p1, p2}, Lcom/perm/kate/EditGroupManagerActivity;->access$002(Lcom/perm/kate/EditGroupManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method
