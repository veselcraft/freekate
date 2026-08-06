.class Lcom/perm/kate/ContactsListAdapter$ContactItem;
.super Ljava/lang/Object;
.source "ContactsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ContactsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContactItem"
.end annotation


# instance fields
.field public contact:Lcom/perm/kate/api/Contact;

.field public type:Lcom/perm/kate/ContactsListAdapter$ContactType;

.field public user:Lcom/perm/kate/api/User;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
