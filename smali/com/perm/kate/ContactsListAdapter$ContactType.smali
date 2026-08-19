.class final enum Lcom/perm/kate/ContactsListAdapter$ContactType;
.super Ljava/lang/Enum;
.source "ContactsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ContactsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ContactType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perm/kate/ContactsListAdapter$ContactType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/ContactsListAdapter$ContactType;

.field public static final enum EMAIL:Lcom/perm/kate/ContactsListAdapter$ContactType;

.field public static final enum PHONE:Lcom/perm/kate/ContactsListAdapter$ContactType;

.field public static final enum USER:Lcom/perm/kate/ContactsListAdapter$ContactType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 127
    new-instance v0, Lcom/perm/kate/ContactsListAdapter$ContactType;

    const-string v1, "EMAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/ContactsListAdapter$ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/ContactsListAdapter$ContactType;->EMAIL:Lcom/perm/kate/ContactsListAdapter$ContactType;

    new-instance v1, Lcom/perm/kate/ContactsListAdapter$ContactType;

    const-string v3, "USER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/ContactsListAdapter$ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/ContactsListAdapter$ContactType;->USER:Lcom/perm/kate/ContactsListAdapter$ContactType;

    new-instance v3, Lcom/perm/kate/ContactsListAdapter$ContactType;

    const-string v5, "PHONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/ContactsListAdapter$ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perm/kate/ContactsListAdapter$ContactType;->PHONE:Lcom/perm/kate/ContactsListAdapter$ContactType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/perm/kate/ContactsListAdapter$ContactType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 126
    sput-object v5, Lcom/perm/kate/ContactsListAdapter$ContactType;->$VALUES:[Lcom/perm/kate/ContactsListAdapter$ContactType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/ContactsListAdapter$ContactType;
    .locals 1

    .line 126
    const-class v0, Lcom/perm/kate/ContactsListAdapter$ContactType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/ContactsListAdapter$ContactType;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/ContactsListAdapter$ContactType;
    .locals 1

    .line 126
    sget-object v0, Lcom/perm/kate/ContactsListAdapter$ContactType;->$VALUES:[Lcom/perm/kate/ContactsListAdapter$ContactType;

    invoke-virtual {v0}, [Lcom/perm/kate/ContactsListAdapter$ContactType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/ContactsListAdapter$ContactType;

    return-object v0
.end method
