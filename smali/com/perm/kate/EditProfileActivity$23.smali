.class Lcom/perm/kate/EditProfileActivity$23;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity;->performClickCountriesSpinner()V
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

    .line 692
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$23;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$23;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$4400(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method
