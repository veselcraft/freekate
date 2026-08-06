.class Lcom/perm/kate/EditProfileActivity$28;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 800
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$28;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 802
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$28;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$4700(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$28;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/EditProfileActivity;->access$5000(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V

    .line 804
    return-void
.end method
